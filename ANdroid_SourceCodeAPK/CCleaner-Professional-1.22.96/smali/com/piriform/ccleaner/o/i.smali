.class public final Lcom/piriform/ccleaner/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final b:Lcom/google/gson/e;

.field final c:Lcom/piriform/ccleaner/a/d;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/piriform/ccleaner/a/e;Lcom/google/gson/e;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/o/i;->a:Landroid/content/SharedPreferences;

    .line 35
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {p2, v0}, Lcom/piriform/ccleaner/a/e;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/o/i;->c:Lcom/piriform/ccleaner/a/d;

    .line 36
    iput-object p3, p0, Lcom/piriform/ccleaner/o/i;->b:Lcom/google/gson/e;

    .line 37
    return-void
.end method
