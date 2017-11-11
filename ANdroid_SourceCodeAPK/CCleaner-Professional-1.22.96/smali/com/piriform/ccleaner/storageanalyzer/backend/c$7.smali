.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$7;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/piriform/ccleaner/storageanalyzer/a;->c:Z

    .line 143
    return-object p1
.end method
