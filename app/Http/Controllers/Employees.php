<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class Employees extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        return view('index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:employees,email',
            'phone' => 'required|numeric|unique:employees,phone|digits_between:10,10',
            'salary' => 'required',
        ], [
            'name.required' => 'Name is required',
            'email.required' => 'Email is required',
            'email.email' => 'Email is invalid',
            'email.unique' => 'Email is already taken',
            'phone.required' => 'Phone is required',
            'phone.numeric' => 'Phone must be numeric',
            'phone.digits_between' => 'Phone must be 10 digits',
            'phone.unique' => 'Phone is already taken',
            'salary.required' => 'Salary is required',

        ]);

        $data = $request->except('_token');

        Employee::create($data);

        return redirect()->route('employees.index')
            ->with('success', 'Employee created successfully');
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('create');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('testt');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
