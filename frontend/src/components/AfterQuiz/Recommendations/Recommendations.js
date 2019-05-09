import React, { Component } from "react";
import SingleRecommendation from "./SingleRecommendation"
import axios from "axios";

export default class Recommendations extends Component {
  constructor(props) {
    super(props);
    this.state = {
      outfits:[],
      user: null,
    }
  }

  componentDidMount() {
    axios("/api/v1/recommendations")
    .then(response => {
      console.log(response.data);
      const arr = []
      response.data.outfits.forEach( outfit => {
        let tempOutfit = outfit;
        tempOutfit['selected'] = false;
        tempOutfit['saved_id'] = -1
        response.data.userOutfits.forEach( userOutfit => {
          if (userOutfit.outfit_id === outfit.id) {
            tempOutfit['selected'] = true;
            tempOutfit['saved_id'] = userOutfit.id
          }
        })
        arr.push(tempOutfit)
      })
      this.setState({
        outfits: arr,
        user:response.data.user_id,
        useroutfits: response.data.userOutfits
      })
    })
    .catch(error => console.log(error))
  }

  onClick = (event) => {
    const saved_outfit_id = parseInt(event.target.getAttribute('id'));
    const indexOfClickedOutfit = this.state.outfits.map( e => e.id ).indexOf( parseInt(saved_outfit_id))

    let body = {
      user_id: this.state.user,
      outfit_id: saved_outfit_id
    }
    const newOutfits = this.state.outfits
    if (newOutfits[indexOfClickedOutfit].selected) {
      axios.delete(`/api/v1/user_outfits/${newOutfits[indexOfClickedOutfit].saved_id}`)
      .then((response)=>{
        console.log(response);
        console.log("Outfit has been deleted");
        newOutfits[indexOfClickedOutfit].selected = false;
        newOutfits[indexOfClickedOutfit].saved_id = -1;
        this.setState({ outfits: newOutfits })
      })
    } else {
      axios.post('/api/v1/user_outfits',
      body)
    .then((response)=>{
      console.log(response);
      console.log("Outfit has been saved");
      newOutfits[indexOfClickedOutfit].selected = true;
      newOutfits[indexOfClickedOutfit].saved_id = response.data.id;
      this.setState({ outfits: newOutfits });


    //copy state of outfits crreate new variable
    //find the corresponding OUTFIT thats been clicked
    //reverse that outfits selected state from true to false or vice versa
    //set state to the new modified state

    //else do the thing bellow


    //copy state of outfits crreate new variable
    //find the corresponding OUTFIT thats been clicked
    //reverse that outfits selected state from true to false or vice versa
    //set state to the new modified state
      })
    }
  }

  render() {
    return (
      <div>
        <h1 className="quiz-title">Recommendations</h1>
      <div className="found-it container">
        <div className="row">
          {this.state.outfits.map((outfit, id) => <SingleRecommendation key={id} outfit={outfit} handleClick={this.onClick}/>)}
          </div>
        </div>
      </div>
    )
  }
}