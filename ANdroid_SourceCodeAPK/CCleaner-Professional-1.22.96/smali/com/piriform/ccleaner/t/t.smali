.class public final Lcom/piriform/ccleaner/t/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:F

.field c:I

.field d:F

.field final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/t/t$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/t/t$1;-><init>(Lcom/piriform/ccleaner/t/t;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/t;->e:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p1, p0, Lcom/piriform/ccleaner/t/t;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget v0, p0, Lcom/piriform/ccleaner/t/t;->d:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/piriform/ccleaner/t/t;->c:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 49
    :goto_0
    return v0

    .line 46
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
