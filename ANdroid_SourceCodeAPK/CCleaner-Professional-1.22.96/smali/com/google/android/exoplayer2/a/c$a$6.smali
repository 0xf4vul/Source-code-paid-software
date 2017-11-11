.class final Lcom/google/android/exoplayer2/a/c$a$6;
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
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/exoplayer2/a/c$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/a/c$a;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/c$a$6;->b:Lcom/google/android/exoplayer2/a/c$a;

    iput p2, p0, Lcom/google/android/exoplayer2/a/c$a$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/c$a$6;->b:Lcom/google/android/exoplayer2/a/c$a;

    .line 1085
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    .line 182
    iget v1, p0, Lcom/google/android/exoplayer2/a/c$a$6;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/a/c;->a(I)V

    .line 183
    return-void
.end method
