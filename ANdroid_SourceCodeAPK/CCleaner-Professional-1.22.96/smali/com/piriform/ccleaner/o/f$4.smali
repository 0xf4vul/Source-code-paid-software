.class final Lcom/piriform/ccleaner/o/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/f;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/f;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/piriform/ccleaner/o/f$4;->a:Lcom/piriform/ccleaner/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 88
    .line 1091
    iget-object v0, p0, Lcom/piriform/ccleaner/o/f$4;->a:Lcom/piriform/ccleaner/o/f;

    .line 2016
    iget-object v0, v0, Lcom/piriform/ccleaner/o/f;->a:Lcom/piriform/ccleaner/o/i;

    .line 2067
    iget-object v0, v0, Lcom/piriform/ccleaner/o/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method
