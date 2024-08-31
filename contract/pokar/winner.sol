// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library pokarconclution{
    function royalorstraightflush(bool[][] memory decs)internal pure returns(uint16){
        for(uint16 i=0;i<4;i++){
            uint16 cnt=0;
            uint16 cnt1=0;
            for(uint16 j=0;j<13;j++){
                if(j>0&&j<9){
                    cnt1++;
                }
                if(decs[i][j]){
                    cnt++;
                }
            }
            if(cnt==5&&cnt1==0){
                return uint16(10);
            }
            if(cnt==5){
                cnt1=0;
                for(uint16 j=0;j<13;j++){
                    if(decs[i][j]){
                        cnt1++;
                    }
                    else{
                        cnt1=0;
                    }
                }
                if(cnt1==5){
                    return uint16(9);
                }
                return uint16(6);
            }
        }
        return uint16(0);
    }
    function fourkind(bool[][] memory decs) internal pure returns(uint16){
        for(uint16 i=0;i<13;i++){
            if(decs[0][i]&&decs[1][i]&&decs[2][i]&&decs[3][i]){
                return uint16(8);
            }
        }
        return uint16(0);
    }
    function FullHouse(bool[][] memory decs)internal pure returns(uint16){
        uint16 tri=0;
        uint16 duo=0;
        for(uint16 j=0;j<13;j++){
            uint16 cnt=0;
            for(uint16 i=0;i<4;i++){
                if(decs[i][j]){
                    cnt++;
                }
            }
            if(cnt==3){
                tri++;
            }
            if(cnt==2){
                duo++;
            }
            if(tri>0&&duo>0){
                return uint16(7);
            }
            
        }
        if(tri>0){
            return uint16(4);
        }
        if(duo>0){
            if(duo>1){
                return uint16(3);
            }
            return uint16(2);
        }
        return uint16(0);
    }
    function straight(bool[][] memory decs) internal pure returns(uint16){
        uint16[] memory cards;
        for(uint16 i=0;i<4;i++){
            for(uint16 j=0;j<13;j++){
                if(decs[i][j]){
                    cards[j]++;
                }
            }
        }
        uint16 cnt=0;
        for(uint16 i=0;i<13;i++){
            if(cards[i]>0){
                cnt+=cards[i];
            }
            else{
                cnt=0;
            }
        }
        if(cnt==5){
            return uint16(5);
        }
        return uint16(0);
    }
    function high(bool[][] memory decs) internal pure returns(uint16,uint16){
        uint16 cnt=0;
        for(uint16 i=0;i<4;i++){
            for(uint16 j=0;j<13;j++){
                if(j==0&&decs[i][j]){
                    cnt=13;
                }
                if(decs[i][j]&&j>cnt){
                    cnt=j;
                }
            }
        }
        return (1,cnt);
    }
}