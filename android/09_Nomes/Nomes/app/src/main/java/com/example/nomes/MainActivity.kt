package com.example.nomes

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.ListView
import com.google.android.material.floatingactionbutton.FloatingActionButton

class MainActivity : AppCompatActivity() {
    private lateinit var lvNomes: ListView
    private lateinit var fabAdd: FloatingActionButton
    private lateinit var nomes: MutableList<String>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.lvNomes = findViewById(R.id.lvNomes)
        this.fabAdd = findViewById(R.id.fabAdd)
        this.nomes = mutableListOf()

//        this.lvNomes.adapter = ArrayAdapter<String>(this, android.R.layout.simple_list_item_1,this.nomes)
        this.lvNomes.adapter = NomeAdapter(this, this.nomes)
        this.fabAdd.setOnClickListener{ add() }
    }

    fun add(){
        val texto = "Texto ${this.nomes.size + 1}"
//        (this.lvNomes.adapter as ArrayAdapter<String>).add(texto)
        (this.lvNomes.adapter as NomeAdapter).add(texto)
    }
}