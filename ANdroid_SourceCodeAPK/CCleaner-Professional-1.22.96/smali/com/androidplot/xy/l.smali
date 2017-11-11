.class public abstract Lcom/androidplot/xy/l;
.super Lcom/androidplot/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XYRegionFormatterType:",
        "Lcom/androidplot/xy/j;",
        ">",
        "Lcom/androidplot/b/d",
        "<",
        "Lcom/androidplot/xy/XYPlot;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/androidplot/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/h",
            "<",
            "Lcom/androidplot/xy/c;",
            "TXYRegionFormatterType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/androidplot/b/d;-><init>()V

    .line 29
    new-instance v0, Lcom/androidplot/c/h;

    invoke-direct {v0}, Lcom/androidplot/c/h;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/l;->a:Lcom/androidplot/c/h;

    .line 30
    return-void
.end method
