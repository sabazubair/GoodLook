import React, { Component } from "react";
import axios from "axios";
import ListGroup from 'react-bootstrap/ListGroup'

export default class Recommendations extends Component {
  constructor(props) {
    super(props);
    this.state = {
      outfits:[],
      user: null,
      color: "black",
      selectedItems: []
    }
  }

  componentDidMount() {
    axios("/api/v1/recommendations")
    .then(response => {
      console.log(response.data);
      this.setState({
        outfits:response.data.outfits,
        user:response.data.user_id
      })
    })
    .catch(error => console.log(error))
  }

  pushIntoSelectedItems = (outfit) => {
    if (this.state.selectedItems.includes(outfit.outfid_id)) {
      return this.state.selectedItems;
    } else {
      this.state.selectedItems.push(outfit);
    }
  }

  onClick = (event) => {
    const saved_outfit_id = event.target.getAttribute('id');
    let body = {
      user_id: this.state.user,
      outfit_id: saved_outfit_id
    }
    let outfit = {outfit_id: saved_outfit_id};

    this.pushIntoSelectedItems(outfit);

    axios.post('/api/v1/user_outfits',
      body)
    .then((response)=>{
      console.log(response);
      console.log("Outfit has been saved");
    })
  }

  render() {
    const test = this.state.outfits.map(outfit => {
          return (<div>
            <img id={outfit.id} style={{width:'20%'}} src={outfit.image} />
            <i className="fas fa-heart" id={outfit.id} color={this.chooseColor} onClick={this.onClick}></i>
            </div>)
    })
    return (
        <ListGroup.Item>
          {test}
        </ListGroup.Item>
    )
  }
}