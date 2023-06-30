require "caesar_cipher"

describe CaesarCipher do

    before do
        @CaesarCipher = CaesarCipher.new()
    end
  
    describe ".caesar_cipher" do
        context "returns correct values" do
            it "returns error" do
                expect(@CaesarCipher.caesar_cipher(" ", 0)).to eq("Error")
            end

            it "Returns correct cipher" do
                expect(@CaesarCipher.caesar_cipher("c", 5)).to eq("h")
            end


            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("A", 1)).to eq("B")
            end

            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Hi I am Jamie", 5)).to eq("Mn N fr Ofrnj")
            end

            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
            end

            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Testing the Caesar cipher", 56)).to eq("Xiwxmrk xli Geiwev gmtliv")
            end

            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Why x z yyy", 26)).to eq("Why x z yyy")
            end
        end

    end
end
