<?php

namespace App\Http\Controllers;

use App\Package;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function about()
    {
        return view('about');
    }

    public function contact()
    {
        return view('contact');
    }
    
    public function welcome()
    {
        
        return view('welcome');
    }
   /* public function welcome2()
    {
        $packages=Package::all();
        return view('userPackage',compact('packages'));
    }*/


     public function index()
    {
        $packages=Package::all();
        return view('package.index',compact('packages'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('package.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=$request->validate($this->validationRules());
        $data['photo'] = $request->photo->store('uploads', 'public');
        //dd($data);

        $package = new Package;
        
        $package->user_id = Auth::id();
        $package->package_type=$request->package_type;
        $package->photo = $request->photo;
        $package->package_date = $request->package_date;
        $package->package_description = $request->package_description;
        $package->package_amount = $request->package_amount;

        $package->save();

        return redirect()->route('packages.index')->with('AddPackage', 'New Package added successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function show(Package $package)
    {
        return view('package.show')->with('package', $package);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function edit(Package $package)
    {
        return view('package.edit', compact('package'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Package $package)
    {
        $validatedData = $request->validate($this->validationRules());

        $package->update($validatedData);

        return redirect()->route('packages.index', $package->id)->with('updatePackage', 'Package updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function destroy(Package $package)
    {
        $package->delete();

        return redirect()->route('packages.index')->with('deletePackage', 'Package deleted successfully');
    }
    
    
    private function validationRules()
    {
        return [
            'package_type'=>'required',
            'photo'=>'required',
            'package_date' => 'required|date',
            'package_description'=>'required',
            'package_amount' => 'required|min:1|max:200'
        ];
    }
}
