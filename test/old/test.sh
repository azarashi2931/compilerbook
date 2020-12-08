#!/bin/bash
assert() {
    expected="$1"
    input="$2"

    ../../azcc "$input" > tmp.s
    cc -o tmp tmp.s ../tool/funccalltest.o ../tool/alloctesthelper.o
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

cd `dirname $0`
assert 0 "test-aa.c"
assert 42 "test-ab.c"
assert 21 "test-ac.c"
assert 41 "test-ad.c"
assert 47 "test-ae.c"
assert 15 "test-af.c"
assert 4 "test-ag.c"
assert 10 "test-ah.c"
assert 2 "test-ai.c"
assert 1 "test-aj.c"
assert 0 "test-ak.c"
assert 1 "test-al.c"
assert 0 "test-am.c"
assert 1 "test-an.c"
assert 0 "test-ao.c"
assert 16 "test-ap.c"
assert 44 "test-aq.c"
assert 25 "test-ar.c"
assert 44 "test-as.c"
assert 40 "test-at.c"
assert 15 "test-au.c"
assert 15 "test-av.c"
assert 10 "test-aw.c"
assert 15 "test-ax.c"
assert 15 "test-ay.c"
assert 15 "test-az.c"
assert 10 "test-ba.c"
assert 20 "test-bb.c"
assert 0 "test-bc.c"
assert 13 "test-bd.c"
assert 25 "test-be.c"
assert 36 "test-bf.c"
assert 70 "test-bg.c"
assert 76 "test-bh.c"
assert 81 "test-bi.c"
assert 85 "test-bj.c"
assert 1 "test-bk.c"
assert 3 "test-bl.c"
assert 6 "test-bm.c"
assert 10 "test-bn.c"
assert 15 "test-bo.c"
assert 21 "test-bp.c"
assert 28 "test-bq.c"
assert 36 "test-br.c"
assert 45 "test-bs.c"
assert 55 "test-bt.c"
assert 6 "test-bu.c"
# assert 110 "test-bv.c"
assert 1 "test-bw.c"
assert 2 "test-bx.c"
assert 3 "test-by.c"
assert 1 "test-bz.c"
assert 2 "test-ca.c"
assert 4 "test-cb.c"
assert 8 "test-cc.c"
assert 1 "test-cd.c"
assert 2 "test-ce.c"
assert 4 "test-cf.c"
assert 8 "test-cg.c"
assert 1 "test-ch.c"
assert 2 "test-ci.c"
assert 4 "test-cj.c"
assert 8 "test-ck.c"
assert 1 "test-cl.c"
assert 2 "test-cm.c"
assert 4 "test-cn.c"
assert 8 "test-co.c"
assert 4 "test-cp.c"
assert 8 "test-cq.c"
assert 0 "test-cr.c"
assert 64 "test-cs.c"
assert 3 "test-ct.c"
assert 1 "test-cu.c"
assert 2 "test-cv.c"
assert 3 "test-cw.c"
assert 3 "test-cx.c"
assert 3 "test-cy.c"
assert 3 "test-cz.c"
assert 1 "test-da.c"
assert 3 "test-db.c"
assert 3 "test-dc.c"
assert 1 "test-dd.c"
assert 1 "test-de.c"
assert 5 "test-df.c"
assert 3 "test-dg.c"
assert 97 "test-dh.c"
assert 98 "test-di.c"
assert 99 "test-dj.c"
assert 100 "test-dk.c"
assert 101 "test-dl.c"
assert 102 "test-dm.c"
assert 102 "test-dn.c"

echo OK

