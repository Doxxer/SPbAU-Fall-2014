package ru.spbau.parallel.turaevt;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class LockFreeListTest {

    List<Integer> list;

    @Before
    public void setUp() throws Exception {
        list = new LockFreeList<>();
    }

    @Test
    public void testInsert() throws Exception {
        Assert.assertTrue(list.insert(1));
        Assert.assertFalse(list.insert(1));
        Assert.assertFalse(list.insert(1));
    }

    @Test
    public void testContains() throws Exception {
        Assert.assertTrue(list.insert(1));
        Assert.assertTrue(list.insert(2));
        Assert.assertTrue(list.insert(10));

        Assert.assertFalse(list.contains(3));
        Assert.assertFalse(list.contains(4));
        Assert.assertFalse(list.contains(9));
        Assert.assertFalse(list.contains(11));
        Assert.assertTrue(list.contains(1));
        Assert.assertTrue(list.contains(2));
        Assert.assertTrue(list.contains(10));
    }

    @Test
    public void testRemove() throws Exception {
        Assert.assertTrue(list.insert(11));
        Assert.assertTrue(list.insert(1));
        Assert.assertTrue(list.insert(2));
        Assert.assertTrue(list.insert(10));
        Assert.assertTrue(list.remove(11));

        Assert.assertFalse(list.contains(3));
        Assert.assertFalse(list.contains(4));
        Assert.assertFalse(list.contains(9));
        Assert.assertFalse(list.contains(11));
        Assert.assertTrue(list.contains(1));
        Assert.assertTrue(list.contains(2));
        Assert.assertTrue(list.contains(10));
    }
}