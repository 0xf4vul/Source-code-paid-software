.class final Lcom/avast/android/burger/internal/server/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/burger/internal/server/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:I

.field final d:Lcom/avast/android/burger/a/f;


# direct methods
.method constructor <init>(IJ)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput v0, p0, Lcom/avast/android/burger/internal/server/b$a;->b:I

    .line 525
    iput v0, p0, Lcom/avast/android/burger/internal/server/b$a;->c:I

    .line 536
    new-instance v0, Lcom/avast/android/burger/a/f;

    const-string/jumbo v1, ""

    invoke-direct {v0, p1, v1}, Lcom/avast/android/burger/a/f;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/burger/internal/server/b$a;->d:Lcom/avast/android/burger/a/f;

    .line 537
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/avast/android/burger/internal/server/b$a;->a:J

    .line 538
    return-void
.end method
