.class final Lcom/google/android/exoplayer2/i/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer2/i/j;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/i/j;IJJ)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/i/j$1;->d:Lcom/google/android/exoplayer2/i/j;

    iput p2, p0, Lcom/google/android/exoplayer2/i/j$1;->a:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/i/j$1;->b:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/i/j$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
