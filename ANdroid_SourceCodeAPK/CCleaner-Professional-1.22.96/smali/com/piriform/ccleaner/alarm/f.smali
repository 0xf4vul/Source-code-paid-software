.class public final Lcom/piriform/ccleaner/alarm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/novoda/notils/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/novoda/notils/a/a;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/piriform/ccleaner/alarm/f;->a:Lcom/novoda/notils/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/alarm/a;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 28
    .line 1042
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "alarm"

    .line 1043
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2041
    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 1044
    invoke-interface {v1}, Lcom/piriform/ccleaner/alarm/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1046
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.piriform.ccleaner.action.ALARM"

    const-class v3, Lcom/piriform/ccleaner/alarm/AlarmBroadcastReceiver;

    invoke-direct {v1, v2, v0, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1047
    const-string/jumbo v0, "date_iso"

    sget-object v2, Lcom/piriform/ccleaner/alarm/f;->a:Lcom/novoda/notils/a/a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/alarm/a;->a()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string/jumbo v0, "exact"

    .line 3033
    iget-boolean v2, p0, Lcom/piriform/ccleaner/alarm/a;->c:Z

    .line 1048
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    const-string/jumbo v0, "data_for_recipient"

    .line 4029
    iget-object v2, p0, Lcom/piriform/ccleaner/alarm/a;->d:Ljava/lang/String;

    .line 1049
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4069
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/alarm/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    const-string/jumbo v1, "recipient"

    .line 5041
    iget-object v2, p0, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 55
    invoke-interface {v2}, Lcom/piriform/ccleaner/alarm/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "date_iso"

    sget-object v2, Lcom/piriform/ccleaner/alarm/f;->a:Lcom/novoda/notils/a/a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/alarm/a;->a()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "exact"

    .line 6033
    iget-boolean v2, p0, Lcom/piriform/ccleaner/alarm/a;->c:Z

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    const-string/jumbo v1, "data_for_recipient"

    .line 7029
    iget-object v2, p0, Lcom/piriform/ccleaner/alarm/a;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/piriform/ccleaner/alarm/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/piriform/ccleaner/alarm/g;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/alarm/d;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/piriform/ccleaner/alarm/f;->a:Lcom/novoda/notils/a/a;

    const-string/jumbo v2, "date_iso"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/novoda/notils/a/a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 36
    const-string/jumbo v2, "exact"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 37
    const-string/jumbo v3, "data_for_recipient"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    new-instance v4, Lcom/piriform/ccleaner/alarm/a;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/piriform/ccleaner/alarm/a;-><init>(Ljava/util/Date;Lcom/piriform/ccleaner/alarm/d;ZLjava/lang/String;)V

    return-object v4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/piriform/ccleaner/alarm/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/piriform/ccleaner/alarm/f;->a:Lcom/novoda/notils/a/a;

    invoke-virtual {v0, p0}, Lcom/novoda/notils/a/a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 64
    invoke-static {p1}, Lcom/piriform/ccleaner/alarm/g;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/alarm/d;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/piriform/ccleaner/alarm/a;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/piriform/ccleaner/alarm/a;-><init>(Ljava/util/Date;Lcom/piriform/ccleaner/alarm/d;ZLjava/lang/String;)V

    return-object v2
.end method
