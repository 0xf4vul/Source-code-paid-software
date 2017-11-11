.class final Lcom/piriform/ccleaner/t/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/piriform/ccleaner/t/m$a;->a:I

    .line 85
    iput p2, p0, Lcom/piriform/ccleaner/t/m$a;->b:I

    .line 86
    iput p3, p0, Lcom/piriform/ccleaner/t/m$a;->c:I

    .line 87
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/t/m$a;

    .line 112
    iget v2, p0, Lcom/piriform/ccleaner/t/m$a;->a:I

    iget v3, p1, Lcom/piriform/ccleaner/t/m$a;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/piriform/ccleaner/t/m$a;->b:I

    iget v3, p1, Lcom/piriform/ccleaner/t/m$a;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/piriform/ccleaner/t/m$a;->c:I

    iget v3, p1, Lcom/piriform/ccleaner/t/m$a;->c:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/piriform/ccleaner/t/m$a;->a:I

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/t/m$a;->b:I

    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/piriform/ccleaner/t/m$a;->c:I

    add-int/2addr v0, v1

    .line 122
    return v0
.end method
