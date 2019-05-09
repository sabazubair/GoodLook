import React, { Component } from "react";
import axios from "axios";

export default class TestingWardrobe extends Component {
  constructor(props) {
    super(props);
    this.state = {
      outfits:[],
      user: null
    }
  }

  componentDidMount() {
    axios("/api/v1/wardrobe")
    .then(response => {
      console.log(response.data)
      this.setState({
        outfits:response.data.outfits,
        user:response.data.user_id
      });
    })
    .catch(error => console.log(error))
  }

  deleteLook = (event) => {
    const saved_outfit_transaction_id = event.target.getAttribute('saved_id');

    axios.delete(`/api/v1/user_outfits/${saved_outfit_transaction_id}`)
    .then((response)=>{
      console.log(response);
      console.log("Outfit has been deleted");

      const updatedOutfits = this.state.outfits;
      const indexOfClickedOutfit = this.state.outfits.map( e => e.id ).indexOf( parseInt(saved_outfit_transaction_id));

      for(let i = 0; i < updatedOutfits.length; i++){
        if (i === indexOfClickedOutfit) {
           updatedOutfits.splice(indexOfClickedOutfit, 1);
        }
      }

      this.setState({ outfits: updatedOutfits })
    })


  }

  render() {
    let warning;
    if (this.state.outfits.length === 0) {
      warning = <p style={{fontSize: "2rem"}}>Looks like your wardrobe is empty. Click on your recommendations and find some great looks!</p>
    }

    const test = this.state.outfits.map(outfit => {
          return (
            <div className="wardrobe-single col-4">
              <div className="wardrobe-inner">
                <img id={outfit.outfit.id} src={outfit.outfit.image} />
                <div className="row">
                  <div className="col-1">
                    <i className="fas fa-trash-alt" saved_id={outfit.id} onClick={this.deleteLook}></i>
                  </div>
                  <div className="col-6">{outfit.outfit.text}</div>
                    <div className="col-5">
                      <button><a style={{ color: "black" }} target='_blank' href={outfit.outfit.link}>Shop this look</a></button>
                    </div>
                </div>
              </div>
            </div>)
    })
    return (
      <div>
        <h1 className="quiz-title">Amita's Wardrobe</h1>
      <div className="found-it container">
        <div className="row">
          {warning}
          {test}
          </div>
        </div>
      </div>
    )
  }
}