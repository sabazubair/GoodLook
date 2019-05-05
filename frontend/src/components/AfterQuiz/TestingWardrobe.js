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
    const saved_outfit_id = event.target.getAttribute('id');
    const saved_outfit_transaction_id = event.target.getAttribute('saved_id');

    let body = {
      user_id: this.state.user,
      outfit_id: saved_outfit_id
    }

    axios.delete(`/api/v1/user_outfits/${saved_outfit_transaction_id}`,
      body)
    .then((response)=>{
      console.log(response);
      console.log("Outfit has been deleted");
    })

    window.location.reload();
  }

  render() {
    let warning;
    if (this.state.outfits.length === 0) {
      warning = <p>Looks like your wardrobe is empty. Click on your recommendations and find some great looks!</p>
    }

    const test = this.state.outfits.map(outfit => {
          return <img saved_id={outfit.id} id={outfit.outfit.id} style={{width:'20%'}} src={outfit.outfit.image} />
    })
    return (
        <ListGroup.Item onClick={this.deleteLook}>
          {warning}
          {test}
        </ListGroup.Item>
    )
  }
}