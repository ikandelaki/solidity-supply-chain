// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FlowControl {
    function calcDozenDiscountIF(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;

        if (purchasedQty >= 12) {
            giveDozenPrice = true;
        } else {
            giveDozenPrice = false;
        }

        return giveDozenPrice;
    }

    function calcDozenDiscountWHILE(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        while (numDonuts < purchasedQty) {
            numDonuts++;

            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }

        return giveDozenPrice;
    }

    function calcDozenDiscountDO(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        do {
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        } while (numDonuts < purchasedQty);

        return giveDozenPrice;
    }

    function calcDozenDiscountFOR(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts;

        for (numDonuts = 1; numDonuts <= purchasedQty; numDonuts++) {
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }

        return giveDozenPrice;
    }
}