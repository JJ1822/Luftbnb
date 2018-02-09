import React from 'react';

const ReviewDetail = ({reviews}) => {
  return (
    <ul>
      {reviews.map(review => <li>{review.body}</li>)}
    </ul>
  );
};

export default ReviewDetail;
