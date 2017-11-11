.class public final Lcom/airbnb/lottie/av;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/av$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/au;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ax;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/f",
            "<",
            "Lcom/airbnb/lottie/au;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/au;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/graphics/Rect;

.field final f:J

.field final g:F

.field private final h:J

.field private final i:I


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJIF)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/av;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/av;->b:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0}, Landroid/support/v4/h/f;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/av;->c:Landroid/support/v4/h/f;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/av;->d:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 45
    iput-wide p2, p0, Lcom/airbnb/lottie/av;->h:J

    .line 46
    iput-wide p4, p0, Lcom/airbnb/lottie/av;->f:J

    .line 47
    iput p6, p0, Lcom/airbnb/lottie/av;->i:I

    .line 48
    iput p7, p0, Lcom/airbnb/lottie/av;->g:F

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJIFB)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/av;-><init>(Landroid/graphics/Rect;JJIF)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/airbnb/lottie/av;->f:J

    iget-wide v2, p0, Lcom/airbnb/lottie/av;->h:J

    sub-long/2addr v0, v2

    .line 61
    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/av;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method final a(J)Lcom/airbnb/lottie/au;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/av;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/au;

    return-object v0
.end method

.method final b()F
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/airbnb/lottie/av;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/av;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "LottieComposition:\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/airbnb/lottie/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/au;

    .line 97
    const-string/jumbo v3, "\t"

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
