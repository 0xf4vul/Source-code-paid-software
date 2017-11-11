.class public abstract Lcom/google/android/exoplayer2/h/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h/h$a;,
        Lcom/google/android/exoplayer2/h/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer2/h/h$a",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/google/android/exoplayer2/h/h$b;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/google/android/exoplayer2/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h/g",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/exoplayer2/h/h;->c:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/h/h;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64
    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/f/i;)Lcom/google/android/exoplayer2/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/m;",
            "Lcom/google/android/exoplayer2/f/i;",
            ")",
            "Lcom/google/android/exoplayer2/h/g",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/exoplayer2/h/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/h/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/h/h;->d:Lcom/google/android/exoplayer2/h/g;

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/h;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/h/h$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/h/h$1;-><init>(Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/h/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :cond_0
    return-void
.end method
