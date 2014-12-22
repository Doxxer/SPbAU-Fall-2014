class A {
	public List<Class> getDependencies() {
		return Arrays.asList(A.class, B.class, C.class, Dasha.class);
	}
}


class B {
	public List<Class> getDependencies() {
		return Arrays.asList(B.class, C.class);
	}
}


class C {
	public List<Class> getDependencies() {
		return Arrays.asList(Dasha.class);
	}
}


class Dasha {
	public List<Class> getDependencies() {
		return Collections.emptyList();
	}
}


class Dilya {
	public List<Class> getDependencies() {
		return Collections.emptyList();
	}
}
