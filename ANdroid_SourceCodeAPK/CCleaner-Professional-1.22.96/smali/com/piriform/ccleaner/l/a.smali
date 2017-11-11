.class public Lcom/piriform/ccleaner/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/piriform/ccleaner/l/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Lcom/novoda/notils/a/a;

.field private static final c:Lcom/novoda/notils/a/a;

.field private static final d:Lcom/novoda/notils/a/a;


# instance fields
.field private final e:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    .line 15
    const-string/jumbo v0, "hh:mm"

    sget-object v1, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/l/a;->a(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/novoda/notils/a/a;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/a;->b:Lcom/novoda/notils/a/a;

    .line 16
    const-string/jumbo v0, "HH:mm"

    sget-object v1, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/l/a;->a(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/novoda/notils/a/a;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/a;->c:Lcom/novoda/notils/a/a;

    .line 17
    const-string/jumbo v0, "a"

    sget-object v1, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/l/a;->a(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/novoda/notils/a/a;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/a;->d:Lcom/novoda/notils/a/a;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    invoke-static {v0, p1, p2}, Lcom/piriform/ccleaner/l/a;->a(Ljava/util/Calendar;II)V

    .line 49
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/TimeZone;)Lcom/novoda/notils/a/a;
    .locals 2

    .prologue
    .line 22
    new-instance v1, Lcom/novoda/notils/a/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1085
    iget-object v0, v1, Lcom/novoda/notils/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    return-object v1
.end method

.method public static a(II)Lcom/piriform/ccleaner/l/a;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/piriform/ccleaner/l/a;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/l/a;-><init>(II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/l/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty string passed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/l/a;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/piriform/ccleaner/l/a;->c:Lcom/novoda/notils/a/a;

    invoke-virtual {v1, p0}, Lcom/novoda/notils/a/a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 43
    new-instance v1, Lcom/piriform/ccleaner/l/a;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/piriform/ccleaner/l/a;-><init>(II)V

    return-object v1
.end method

.method static a(Ljava/util/Calendar;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/piriform/ccleaner/l/a;)I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/piriform/ccleaner/l/a;->c:Lcom/novoda/notils/a/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/l/a;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/piriform/ccleaner/l/a;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/l/a;->a(Lcom/piriform/ccleaner/l/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/l/a;

    .line 121
    invoke-virtual {p0}, Lcom/piriform/ccleaner/l/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/piriform/ccleaner/l/a;->a()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/piriform/ccleaner/l/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/piriform/ccleaner/l/a;->b()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/piriform/ccleaner/l/a;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/piriform/ccleaner/l/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
