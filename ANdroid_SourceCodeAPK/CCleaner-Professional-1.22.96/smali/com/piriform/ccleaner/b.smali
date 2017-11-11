.class public final Lcom/piriform/ccleaner/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/b;->a:Ljava/util/concurrent/Executor;

    .line 18
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/cleaning/d;)Lcom/piriform/ccleaner/d/a/b;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/piriform/ccleaner/d/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/d/b;-><init>(Lcom/piriform/ccleaner/cleaning/d;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/f;)Lcom/piriform/ccleaner/d/a/a;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/piriform/ccleaner/d/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/b;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/d/a;-><init>(Lcom/piriform/ccleaner/a/f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
