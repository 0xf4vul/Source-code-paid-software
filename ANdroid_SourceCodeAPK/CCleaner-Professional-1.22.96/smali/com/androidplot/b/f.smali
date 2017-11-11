.class abstract Lcom/androidplot/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LayoutType:Ljava/lang/Enum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LayoutType;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method public constructor <init>(FLjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/b/f;->a(FLjava/lang/Enum;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/b/f;->b(FLjava/lang/Enum;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/androidplot/b/f;->b:F

    return v0
.end method

.method protected abstract a(FLjava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation
.end method

.method public b()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LayoutType;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/androidplot/b/f;->a:Ljava/lang/Enum;

    return-object v0
.end method

.method public b(FLjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/b/f;->a(FLjava/lang/Enum;)V

    .line 46
    iput p1, p0, Lcom/androidplot/b/f;->b:F

    .line 47
    iput-object p2, p0, Lcom/androidplot/b/f;->a:Ljava/lang/Enum;

    .line 48
    return-void
.end method
