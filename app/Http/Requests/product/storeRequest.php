<?php

namespace App\Http\Requests\product;

use Illuminate\Foundation\Http\FormRequest;

class storeRequest extends FormRequest
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
            'name' => 'required|unique:product|max:255',
            'content'=>'required',
            'id_cate'=>'required',
            'price'=>'required',
            'quantity'=>'required',
            'file_image'=>'required',
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'không được để trống!',
            'name.unique'=>'sản phẩm đã tồn tại',
            'content.required' => 'không được để trống!',
            'id_cate.required' => 'không được để trống!',
            'price.required' => 'không được để trống!',
            'quantity.required' => 'không được để trống!',
            'file_name.required' => 'không được để trống!',
        ];
    }
}
