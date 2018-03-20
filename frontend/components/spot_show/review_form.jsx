import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 1,
      body: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToSpotShow = this.navigateToSpotShow.bind(this);
  }

  navigateToSpotShow() {
    const url = `/spots/${this.props.match.params.spotId}`;
    this.props.history.push(url);
  }

  handleSubmit(e) {
    e.preventDefault();
    const spotId = parseInt(this.props.match.params.spotId);
    const review = Object.assign({}, this.state, {
      spot_id: spotId
    });
    this.props.createReview({review});
    e.target.reset();

    this.navigateToSpotShow();
  }

  update(property) {
    return e => this.setState({ [property]: e.currentTarget.value });
  }

  render() {
    return (
      <div className="review-form">
        <form onSubmit={this.handleSubmit} >
          <label>Rating</label>
          <br/>
            <span className="rating">
              <input type="radio" className="rating-input"
                id="rating-input-1-5" onChange={this.update("rating")} value="5"/>
              <label htmlFor="rating-input-1-5" className="rating-star"></label>
              <input type="radio" className="rating-input"
                id="rating-input-1-4" onChange={this.update("rating")} value="4"/>
              <label htmlFor="rating-input-1-4" className="rating-star"></label>
              <input type="radio" className="rating-input"
                id="rating-input-1-3" onChange={this.update("rating")} value="3"/>
              <label htmlFor="rating-input-1-3" className="rating-star"></label>
              <input type="radio" className="rating-input"
                id="rating-input-1-2" onChange={this.update("rating")} value="2"/>
              <label htmlFor="rating-input-1-2" className="rating-star"></label>
              <input type="radio" className="rating-input"
                id="rating-input-1-1" onChange={this.update("rating")} value="1"/>
              <label htmlFor="rating-input-1-1" className="rating-star"></label>
            </span>
          <br/>
          <textarea
            refs="formtext"
            cols="30"
            rows="10"
            placeholder="Leave a review"
            onChange={this.update("body")}
          >{this.state.body}</textarea>

          <br/>
          <button class="button" type="submit">Submit</button>
        </form>
      </div>
    );
 }
}

export default withRouter(ReviewForm);
