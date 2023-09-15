package com.example.janela

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts

class MainActivity : AppCompatActivity() {
    private lateinit var btVai: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Log.i("APP_JANELA", "OnCreate - Main")

        this.btVai = findViewById(R.id.btnMainVai)
//        this.btVai.setOnClickListener{ vai() }


        val outraResult = registerForActivityResult(ActivityResultContracts.StartActivityForResult()){
            if (it.resultCode == RESULT_OK){
                val msg = it.data?.getStringExtra("MSG_VOLTA")
                Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
            }else{
                Toast.makeText(this, "Se liga!", Toast.LENGTH_SHORT).show()
            }
        }

        this.btVai.setOnClickListener{
            val intent = Intent(this, OutraActivity::class.java).apply {
                putExtra("MSG_VAI", "Funciona meeeesmo!")
            }
            outraResult.launch(intent)
        }

    }

    override fun onStart() {
        super.onStart()
        Log.i("APP_JANELA", "OnStart - Main")
    }

    override fun onResume() {
        super.onResume()
        Log.i("APP_JANELA", "OnResume - Main")
    }

    override fun onPause() {
        super.onPause()
        Log.i("APP_JANELA", "OnPause - Main")
    }

    override fun onStop() {
        super.onStop()
        Log.i("APP_JANELA", "OnStop - Main")
    }

    override fun onRestart() {
        super.onRestart()
        Log.i("APP_JANELA", "OnRestart - Main")
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.i("APP_JANELA", "OnDestroy - Main")
    }

    fun vai(){
        val intent = Intent(this, OutraActivity::class.java).apply {
            putExtra("MSG_VAI", "Funciona!")
        }
//        intent.putExtra("MSG_VAI", "Funciona!")

        startActivity(intent)
    }
}