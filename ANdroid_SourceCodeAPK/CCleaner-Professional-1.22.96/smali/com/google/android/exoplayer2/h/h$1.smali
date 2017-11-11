.class final Lcom/google/android/exoplayer2/h/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/h/g;

.field final synthetic b:Lcom/google/android/exoplayer2/h/h;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/h/g;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/h/h$1;->b:Lcom/google/android/exoplayer2/h/h;

    iput-object p2, p0, Lcom/google/android/exoplayer2/h/h$1;->a:Lcom/google/android/exoplayer2/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/h$1;->b:Lcom/google/android/exoplayer2/h/h;

    .line 1026
    iget-object v0, v0, Lcom/google/android/exoplayer2/h/h;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h/h$a;

    .line 139
    iget-object v2, p0, Lcom/google/android/exoplayer2/h/h$1;->a:Lcom/google/android/exoplayer2/h/g;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/h/h$a;->a(Lcom/google/android/exoplayer2/h/g;)V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method
