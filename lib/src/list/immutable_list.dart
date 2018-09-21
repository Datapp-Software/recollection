import 'dart:core';
import 'dart:math';

import 'package:meta/meta.dart';

class ImmutableList<E> implements List<E> {
  final List<E> _list;

  const ImmutableList()
    : _list = const [];

  ImmutableList.from(Iterable<E> elements)
    : assert(elements.every((e) => e != null)),
      _list = elements.toList();

  ImmutableList.view(List<E> elements)
    : assert(elements.every((e) => e != null)),
      _list = elements;

  @override
  E get first {
    return _list.first;
  }

  @override
  @alwaysThrows
  set first(E value) {
    _checkState('first');
  }

  @override
  E get last {
    return _list.last;
  }

  @override
  @alwaysThrows
  set last(E value) {
    _checkState('last');
  }

  @override
  int get length {
    return _list.length;
  }

  @override
  @alwaysThrows
  set length(int newLength) {
    _checkState('length');
  }

  @override
  E get single {
    return _list.single;
  }

  @override
  bool get isEmpty {
    return _list.isEmpty;
  }

  @override
  bool get isNotEmpty {
    return _list.isNotEmpty;
  }

  @override
  Iterator<E> get iterator {
    return _list.iterator;
  }

  @override
  Iterable<E> get reversed {
    return _list.reversed;
  }

  @override
  List<E> operator +(List<E> other) {
    return _list + other;
  }

  @override
  E operator [](int index) {
    return _list[index];
  }

  @override
  @alwaysThrows
  void operator []=(int index, E value) {
    _checkState('indexed set');
  }

  @override
  @alwaysThrows
  void add(E value) {
    _checkState('add');
  }

  @override
  @alwaysThrows
  void addAll(Iterable<E> iterable) {
    _checkState('addAll');
  }

  @override
  bool any(bool Function(E element) test) {
    return _list.any(test);
  }

  @override
  Map<int, E> asMap() {
    return _list.asMap();
  }

  @override
  List<R> cast<R>() {
    return _list.cast<R>();
  }

  @override
  @alwaysThrows
  void clear() {
    _checkState('clear');
  }

  @override
  bool contains(Object element) {
    return _list.contains(element);
  }

  @override
  E elementAt(int index) {
    return _list.elementAt(index);
  }

  @override
  bool every(bool Function(E element) test) {
    return _list.every(test);
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) f) {
    return _list.expand(f);
  }

  @override
  @alwaysThrows
  void fillRange(int start, int end, [E fillValue]) {
    _checkState('fillRange');
  }

  @override
  E firstWhere(bool Function(E element) test, {E Function() orElse}) {
    return _list.firstWhere(test, orElse: orElse);
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    return _list.fold(initialValue, combine);
  }

  @override
  Iterable<E> followedBy(Iterable<E> other) {
    return _list.followedBy(other);
  }

  @override
  void forEach(void Function(E element) f) {
    return _list.forEach(f);
  }

  @override
  Iterable<E> getRange(int start, int end) {
    return _list.getRange(start, end);
  }

  @override
  int indexOf(E element, [int start = 0]) {
    return _list.indexOf(element, start);
  }

  @override
  int indexWhere(bool Function(E element) test, [int start = 0]) {
    return _list.indexWhere(test, start);
  }

  @override
  @alwaysThrows
  void insert(int index, E element) {
    _checkState('insert');
  }

  @override
  @alwaysThrows
  void insertAll(int index, Iterable<E> iterable) {
    _checkState('insertAll');
  }

  @override
  String join([String separator = ""]) {
    return _list.join(separator);
  }

  @override
  int lastIndexOf(E element, [int start]) {
    return _list.lastIndexOf(element, start);
  }

  @override
  int lastIndexWhere(bool Function(E element) test, [int start]) {
    return _list.lastIndexWhere(test, start);
  }

  @override
  E lastWhere(bool Function(E element) test, {E Function() orElse}) {
    return _list.lastWhere(test, orElse: orElse);
  }

  @override
  Iterable<T> map<T>(T Function(E e) f) {
    return _list.map(f);
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    return _list.reduce(combine);
  }

  @override
  @alwaysThrows
  bool remove(Object value) {
    _checkState('remove');
  }

  @override
  @alwaysThrows
  E removeAt(int index) {
    _checkState('removeAt');
  }

  @override
  @alwaysThrows
  E removeLast() {
    _checkState('removeLast');
  }

  @override
  @alwaysThrows
  void removeRange(int start, int end) {
    _checkState('removeRange');
  }

  @override
  @alwaysThrows
  void removeWhere(bool Function(E element) test) {
    _checkState('removeWhere');
  }

  @override
  @alwaysThrows
  void replaceRange(int start, int end, Iterable<E> replacement) {
    _checkState('replaceRange');
  }

  @override
  @alwaysThrows
  void retainWhere(bool Function(E element) test) {
    _checkState('retainWhere');
  }

  @override
  @alwaysThrows
  void setAll(int index, Iterable<E> iterable) {
    _checkState('setAll');
  }

  @override
  @alwaysThrows
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    _checkState('setRange');
  }

  @override
  @alwaysThrows
  void shuffle([Random random]) {
    _checkState('shuffle');
  }

  @override
  E singleWhere(bool Function(E element) test, {E Function() orElse}) {
    return _list.singleWhere(test, orElse: orElse);
  }

  @override
  Iterable<E> skip(int count) {
    return _list.skip(count);
  }

  @override
  Iterable<E> skipWhile(bool Function(E value) test) {
    return _list.skipWhile(test);
  }

  @override
  @alwaysThrows
  void sort([int Function(E a, E b) compare]) {
    _checkState('sort');
  }

  @override
  List<E> sublist(int start, [int end]) {
    return _list.sublist(start, end);
  }

  @override
  Iterable<E> take(int count) {
    return _list.take(count);
  }

  @override
  Iterable<E> takeWhile(bool Function(E value) test) {
    return _list.takeWhile(test);
  }

  @override
  List<E> toList({bool growable: true}) {
    return _list.toList(growable: growable);
  }

  @override
  Set<E> toSet() {
    return _list.toSet();
  }

  @override
  Iterable<E> where(bool Function(E element) test) {
    return _list.where(test);
  }

  @override
  Iterable<T> whereType<T>() {
    return _list.whereType<T>();
  }

  @alwaysThrows
  void _checkState(String reason) {
    throw UnsupportedError(reason);
  }
}