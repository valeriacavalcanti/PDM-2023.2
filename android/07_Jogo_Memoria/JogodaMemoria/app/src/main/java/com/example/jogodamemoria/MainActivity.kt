package com.example.jogodamemoria

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.ImageView

class MainActivity : AppCompatActivity() {
    private lateinit var jogo: Jogo
    private lateinit var listImage: MutableList<MutableList<ImageView>>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.jogo = Jogo()

        this.listImage = mutableListOf()

        var it = this.jogo.times.iterator()

        for (i in 0..3){
            val linha = mutableListOf<ImageView>()
            for (j in 0..3){
                val id = resources.getIdentifier("image${i}${j}", "id", packageName)
//                Log.i("APP_JM", id.toString())
                val imagem = findViewById<ImageView>(id)
                imagem.setImageResource(it.next())
                linha.add(imagem)
//                Log.i("APP_JM", "${i}${j} ${it.next()}")
            }
            this.listImage.add(linha)
        }
    }
}