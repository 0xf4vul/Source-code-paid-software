.class final Lcom/google/android/exoplayer2/a/c$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/Format;

.field final synthetic b:Lcom/google/android/exoplayer2/a/c$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/a/c$a;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/c$a$3;->b:Lcom/google/android/exoplayer2/a/c$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/a/c$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/c$a$3;->b:Lcom/google/android/exoplayer2/a/c$a;

    .line 1085
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/c$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/a/c;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    return-void
.end method
