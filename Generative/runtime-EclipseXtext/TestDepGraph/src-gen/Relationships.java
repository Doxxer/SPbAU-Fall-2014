class A {
	public List<Class> getDependencies() {
		return Arrays.asList(A.class, B.class, C.class, D.class);
	}
}


class B {
	public List<Class> getDependencies() {
		return Arrays.asList(B.class, C.class);
	}
}


class C {
	public List<Class> getDependencies() {
		return Arrays.asList(D.class);
	}
}


class D {
	public List<Class> getDependencies() {
		return Collections.emptyList();
	}
}
