package com.example.lista

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.AdapterView
import android.widget.AdapterView.OnItemClickListener
import android.widget.AdapterView.OnItemLongClickListener
import android.widget.ArrayAdapter
import android.widget.ListView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import com.google.android.material.floatingactionbutton.FloatingActionButton

class MainActivity : AppCompatActivity() {
    private lateinit var cadastro: Cadastro
    private lateinit var lista: ListView
    private lateinit var fabAdd: FloatingActionButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.cadastro = Cadastro()

        this.lista = findViewById(R.id.lvMainNomes)
        this.lista.setOnItemClickListener(OnClickItem())
        this.lista.setOnItemLongClickListener(OnLongClickItem())

        val adapter = ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, this.cadastro.lista)
        this.lista.adapter = adapter

        this.fabAdd = findViewById(R.id.fabMainAdd)

        val resultForm = registerForActivityResult(ActivityResultContracts.StartActivityForResult()){
            if (it.resultCode == RESULT_OK){
                val nome = it.data?.getStringExtra("NOME")
                // inserir no cadastro
//                this.cadastro.lista.add(nome.toString())
//                (this.lista.adapter as ArrayAdapter<String>).notifyDataSetChanged()
                (this.lista.adapter as ArrayAdapter<String>).add(nome)
                Log.i("APP_LISTA", this.cadastro.lista.toString())
            }
        }

        this.fabAdd.setOnClickListener{
            val intent = Intent(this, FormActivity::class.java)
            resultForm.launch(intent)
        }
    }

    inner class OnClickItem: OnItemClickListener{
        override fun onItemClick(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long) {
            val item = this@MainActivity.cadastro.lista.get(p2)
            Toast.makeText(this@MainActivity, item, Toast.LENGTH_SHORT).show()
        }
    }

    inner class OnLongClickItem: OnItemLongClickListener{
        override fun onItemLongClick(p0: AdapterView<*>?, p1: View?, p2: Int, p3: Long): Boolean {
            this@MainActivity.cadastro.lista.removeAt(p2)
            (this@MainActivity.lista.adapter as ArrayAdapter<String>).notifyDataSetChanged()
            return true
        }
    }
}