.class final Lcom/piriform/ccleaner/o/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/a;
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
        "Landroid/database/Cursor;",
        "Lcom/piriform/ccleaner/alarm/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/a;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/piriform/ccleaner/o/a$1;->a:Lcom/piriform/ccleaner/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/piriform/ccleaner/alarm/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1026
    .line 1074
    :try_start_0
    const-string/jumbo v0, "date_iso"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1075
    const-string/jumbo v2, "recipient"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1076
    const-string/jumbo v3, "exact"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1077
    const-string/jumbo v4, "data_for_recipient"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1078
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1079
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1081
    :goto_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    invoke-static {v5, v2, v0, v3}, Lcom/piriform/ccleaner/alarm/f;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/piriform/ccleaner/alarm/a;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1086
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/piriform/ccleaner/o/a$1;->a:Lcom/piriform/ccleaner/o/a;

    .line 2026
    iget-object v1, v1, Lcom/piriform/ccleaner/o/a;->a:Lcom/piriform/ccleaner/b/e;

    .line 62
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/o/a$1;->a(Landroid/database/Cursor;)Lcom/piriform/ccleaner/alarm/a;

    move-result-object v0

    return-object v0
.end method
