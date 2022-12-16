/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.edu.ifrs.restinga.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author pedro
 */
public class Zoo {
    private String especie;
    private String classe;
    private float peso;
    private int idade;                           

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
    
    public void inserir() {
        Connection con = null;
        PreparedStatement ptst = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "root");            

            /* Preparar uma sentença SQL */
            ptst = con.prepareStatement("insert into animais (especie, classe, peso, idade) values (?, ?, ?, ?)");
            ptst.setString(1, this.getEspecie());
            ptst.setString(2, this.getClasse());
            ptst.setFloat(3, this.getPeso());
            ptst.setInt(4, this.getIdade());

            ptst.execute();           
            ptst.close();
            con.close();
        } catch (Exception e) {

        }
    }
}
