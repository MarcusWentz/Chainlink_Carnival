// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract matchingArrayElements {
    uint[] public array1 = [1, 34, 5, 7, 62];
    uint[] public array2 = [7, 34, 9, 5, 6];
    uint[] public arrayCompared;
    uint public matchingValuesCounter;

    function matchingElements() public {

        for(uint i=0; i<array1.length; i++){ //Read through array1 for push.
         for(uint j=0; j<array2.length; j++){
                if(array1[i] == array2[j]) {
                    matchingValuesCounter++;
                }
            }
            if(matchingValuesCounter == 0){
                arrayCompared.push(array1[i]);
            }
            matchingValuesCounter = 0;
        }

        for(uint i=0; i<array2.length; i++){ //Read through array2 for push.
         for(uint j=0; j<array1.length; j++){
                if(array2[i] == array1[j]) {
                    matchingValuesCounter++;
                }
            }
            if(matchingValuesCounter == 0){
                arrayCompared.push(array2[i]);
            }
            matchingValuesCounter = 0;
        }
    }

    function confirmAnswer() public view returns(uint[] memory){
        return arrayCompared;
    }
    
}

contract compress_Uint256_to_Uint8 {
    uint public valueBig = 945;
    uint[] public arrayStorage;
    uint sum;
    uint8 public valueSmall;

    function convertUint256_to_Uint8() public {
        //while(%10)
        // if(true){
            arrayStorage.push(valueBig/100); 
        // }
        // if(true){
            arrayStorage.push(( (valueBig%100)-(valueBig%10) )/10);
        // }
        // if(true){
            arrayStorage.push(valueBig%10);
        // }
        for(uint i=0; i<arrayStorage.length; i++) {
            sum += arrayStorage[i];
            delete arrayStorage[i];
        }
        
        valueBig = sum;
        sum = 0;         //18

        // if(true){
            arrayStorage.push(valueBig/100); 
        // }
        // if(true){
            arrayStorage.push(( (valueBig%100)-(valueBig%10) )/10);
        // }
        // if(true){
            arrayStorage.push(valueBig%10);
        // }
        for(uint i=0; i<arrayStorage.length; i++) {
            sum += arrayStorage[i];
        }
        valueSmall = uint8(sum);
    }

    function confirmAnswer() public view returns(uint[] memory){
        return arrayStorage;
    }
}

contract VRF_RangeConvert {
    
    uint256 public VRF_Test_Value = 101;
    
    function convertLargeVRFValue() public {
        if(VRF_Test_Value > 888) { //999-111 = 888
            VRF_Test_Value -= (VRF_Test_Value-888);
        }
        if(VRF_Test_Value%2 == 0) {
            VRF_Test_Value += 111;
        }
        if(VRF_Test_Value%2 == 1) {
            VRF_Test_Value += 110;
        }

        VRF_Test_Value;
    }
    
}

