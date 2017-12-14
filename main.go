package main

import (
    "encoding/json"
    "log"
    "net/http"

    "github.com/gorilla/mux"
)

type Product struct {
    Kode        		string   `json:"kode,omitempty"`
    Nama				string   `json:"nama,omitempty"`
    Harga_Sebelumnya  	string   `json:"harga_sebelumnya,omitempty"`
    Harga_Sekarang		string   `json:"harga_sekarang,omitempty"`
    Lokasi				string   `json:"lokasi,omitempty"`
}

var produk []Product

func GetProductEndpoint(w http.ResponseWriter, req *http.Request) {
    params := mux.Vars(req)
    for _, item := range produk {
        if item.Kode == params["id"] {
            json.NewEncoder(w).Encode(item)
            return
        }
    }
    json.NewEncoder(w).Encode(&Product{})
}

func GetProdukEndpoint(w http.ResponseWriter, req *http.Request) {
    json.NewEncoder(w).Encode(produk)
}

func CreateProductEndpoint(w http.ResponseWriter, req *http.Request) {
    params := mux.Vars(req)
    var Product Product
    _ = json.NewDecoder(req.Body).Decode(&Product)
    Product.Kode = params["id"]
    produk = append(produk, Product)
    json.NewEncoder(w).Encode(produk)
}

func DeleteProductEndpoint(w http.ResponseWriter, req *http.Request) {
    params := mux.Vars(req)
    for index, item := range produk {
        if item.Kode == params["id"] {
            produk = append(produk[:index], produk[index+1:]...)
            break
        }
    }
    json.NewEncoder(w).Encode(produk)
}

func main() {
    router := mux.NewRouter()
    produk = append(produk, Product{Kode: "1", Nama: "Nic", Harga_Sebelumnya: "Raboy", Harga_Sekarang: "15000", Lokasi: "naon"})
    produk = append(produk, Product{Kode: "2", Nama: "Nic", Harga_Sebelumnya: "Raboy", Harga_Sekarang: "15000", Lokasi: "naon"})
    router.HandleFunc("/produk", GetProdukEndpoint).Methods("GET")
    router.HandleFunc("/produk/{id}", GetProductEndpoint).Methods("GET")
    router.HandleFunc("/produk/{id}", CreateProductEndpoint).Methods("POST")
    router.HandleFunc("/produk/{id}", DeleteProductEndpoint).Methods("DELETE")
    log.Fatal(http.ListenAndServe(":12345", router))
}