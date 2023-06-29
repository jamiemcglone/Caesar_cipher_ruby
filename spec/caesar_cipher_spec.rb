require "caesar_cipher"

describe CaesarCipher do

    before do
        @CaesarCipher = CaesarCipher.new()
    end
  
    describe ".caesar_cipher" do
        context "Empty values inputted" do
            it "returns error" do
                expect(@CaesarCipher.caesar_cipher(" ", 0)).to eq("Error")
            end
        end

        context "Given C and 5" do
            it "Returns correct cipher" do
                expect(@CaesarCipher.caesar_cipher("c", 5)).to eq("h")
            end
        end

        context "Can handle upcase input" do
            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("A", 1)).to eq("B")
            end
        end

        context "Can handle words" do
            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Hi I am Jamie", 5)).to eq("Mn N fr Ofrnj")
            end
        end

        context "Odin project test case" do
            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
            end
        end

        context "Shift above number of letters" do
            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Testing the Caesar cipher", 56)).to eq("Xiwxmrk xli Geiwev gmtliv")
            end
        end

        context "Possible edge case" do
            it "returns correct value" do
                expect(@CaesarCipher.caesar_cipher("Why x z yyy", 26)).to eq("Why x z yyy")
            end
        end

    end
end
