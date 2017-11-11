.class public final Lcom/piriform/ccleaner/core/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;ZZ)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 15
    iput-boolean p2, p0, Lcom/piriform/ccleaner/core/data/b;->b:Z

    .line 16
    iput-boolean p3, p0, Lcom/piriform/ccleaner/core/data/b;->c:Z

    .line 17
    return-void
.end method
