package com.example.nomes

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.TextView

class NomeAdapter(var context: Context, var lista: MutableList<String>): BaseAdapter() {
    override fun getCount(): Int {
        return this.lista.size
    }

    override fun getItem(position: Int): Any {
        return this.lista.get(position)
    }

    override fun getItemId(p0: Int): Long {
        return p0.toLong()
    }

    override fun getView(position: Int, view: View?, viewGroup: ViewGroup?): View {
        var novoView = if (view == null){
            LayoutInflater.from(this.context).inflate(R.layout.item_list, viewGroup, false)
        }else{
            view
        }

        val textView = novoView.findViewById<TextView>(R.id.tvItemList)
        val texto = this.lista.get(position)
        textView.text = texto
        //textView.text = this.getItem(position) as String

        return novoView
    }

    fun add(texto: String){
        this.lista.add(texto)
        notifyDataSetChanged()
    }
}