

const {chaiKeyword, expect} = require('chai');
const { isCallTrace } = require('hardhat/internal/hardhat-network/stack-traces/message-trace');

//Starting test block
describe('Box', function() {
    before(async function(){
        this.Box = await ethers.getContractFactory('Box');
    });

    beforeEach(async function() {
        this.box = await this.Box.deploy();
        await this.box.deployed();
    });

    //Test case
    it('retrieve returns a value previously stored', async function() {
        //Store a value
        await this.box.store(42);

        //Test if returned value is the same one
        expect((await this.box.retrieve()).toString()).to.equal('42');
    })
});