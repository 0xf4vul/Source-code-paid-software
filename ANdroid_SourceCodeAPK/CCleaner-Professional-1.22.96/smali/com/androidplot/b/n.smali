.class public abstract Lcom/androidplot/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/n$a;
    }
.end annotation


# instance fields
.field c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iput p1, p0, Lcom/androidplot/b/n;->c:I

    .line 28
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method
