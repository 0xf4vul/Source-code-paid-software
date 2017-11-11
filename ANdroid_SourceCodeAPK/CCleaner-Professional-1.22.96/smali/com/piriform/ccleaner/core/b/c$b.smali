.class public final Lcom/piriform/ccleaner/core/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/core/a;

.field final b:Lcom/piriform/ccleaner/core/data/e;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/c$b;->a:Lcom/piriform/ccleaner/core/a;

    .line 31
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/c$b;->b:Lcom/piriform/ccleaner/core/data/e;

    .line 32
    return-void
.end method
