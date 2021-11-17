const { expect } = require("chai")

describe("Pointers contract", function () {

    let two
    let three
    
    beforeEach(async function () {

        twoFactory = await ethers.getContractFactory("Two")
        two = await twoFactory.deploy()
        await two.deployed()
        threeFactory = await ethers.getContractFactory("Three")
        three = await threeFactory.deploy()
        await three.deployed()
    })

    it("Two.isHappy returns false", async function () {
        await two.setHappy(2)
        await two.surprise(2)
        expect(await two.isHappy(2)).to.equal(false)
    })

    it("Three.isHappy returns false and getX returns 0", async function () {
        await three.setHappy(2)
        await three.surprise(2)
        expect(await three.isHappy(2)).to.equal(false)
        expect(await three.getX()).to.equal(0)
    })

})
