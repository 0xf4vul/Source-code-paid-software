.class public final Lcom/piriform/ccleaner/p/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<TT;TU;",
        "Lcom/piriform/ccleaner/core/a/p",
        "<TT;TU;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1087
    new-instance v0, Lcom/piriform/ccleaner/core/a/p;

    invoke-direct {v0, p1, p2}, Lcom/piriform/ccleaner/core/a/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-object v0
.end method
