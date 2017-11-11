.class public final Lf/d/c/f;
.super Lf/g;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lf/g;-><init>()V

    .line 28
    iput-object p1, p0, Lf/d/c/f;->b:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lf/g$a;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lf/d/c/g;

    iget-object v1, p0, Lf/d/c/f;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lf/d/c/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
