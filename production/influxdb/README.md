Statefulsets are annoying. The volume claim template asks for 30GB, but I edited the actual PVC to
request 100GB, because the statefulset itself is immutable.
