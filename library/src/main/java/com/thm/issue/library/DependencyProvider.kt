package com.thm.issue.library

object DependencyProvider {
    val dependencies: Map<String, Any> = mapOf(String::class.qualifiedName!! to "value")
    inline fun <reified T> get() = dependencies.getValue(T::class.qualifiedName!!) as T
}