.class final Lcom/google/android/exoplayer2/k/e$a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/k/e$a;->a(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/google/android/exoplayer2/k/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/k/e$a;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/exoplayer2/k/e$a$6;->b:Lcom/google/android/exoplayer2/k/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/k/e$a$6;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a$6;->b:Lcom/google/android/exoplayer2/k/e$a;

    .line 1109
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer2/k/e$a$6;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/k/e;->a(Landroid/view/Surface;)V

    .line 207
    return-void
.end method
