.class final Lcom/androidplot/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/androidplot/c/f$a;->a:F

    .line 209
    iput p2, p0, Lcom/androidplot/c/f$a;->b:I

    .line 210
    return-void
.end method
