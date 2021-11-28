<?php

namespace App\Http\Requests\category;

use Illuminate\Foundation\Http\FormRequest;

class updateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|unique:category,name,'.request()->id,
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'không được để trống!',
        ];
    }
}
