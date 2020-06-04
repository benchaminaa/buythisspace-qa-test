const request = require('request');
const expect = require('chai').expect;
const baseUrl = process.env.BASE_URL || 'https://buythisspace.com.au';

describe('Home Page', () => {
  it('GET request should return 200 for buythisspace.com.au', function(done) {
    const options = { 
      url: baseUrl,
      method: 'GET'
    }
    request(options, (err,response, body) => {
      if(err) {
        throw Error(err);
      }
      expect(response.statusCode).to.be.equal(200);
      done();
    });
  })
})
