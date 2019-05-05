import React, { Component } from "react";
import axios from "axios";
import ListGroup from 'react-bootstrap/ListGroup'

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
      warning = <p>Looks like your wardrobe is empty. Click on your recommendations and find some great looks!</p>
    }

    const test = this.state.outfits.map(outfit => {
          return (<div>
          <img id={outfit.outfit.id} style={{width:'20%'}} src={outfit.outfit.image} />
          <i className="fas fa-trash-alt" saved_id={outfit.id} onClick={this.deleteLook}></i>
          </div>)
    })
    return (
        <ListGroup.Item>
          {warning}
          {test}
        </ListGroup.Item>
    )
  }
}