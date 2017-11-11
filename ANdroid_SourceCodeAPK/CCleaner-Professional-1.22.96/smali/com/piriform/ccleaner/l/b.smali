.class public Lcom/piriform/ccleaner/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/l/c;


# static fields
.field private static final k:Ljava/util/TimeZone;


# instance fields
.field public final transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/piriform/ccleaner/l/a;

.field public d:Lcom/piriform/ccleaner/l/d;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/l/b;->k:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    .line 56
    sget-object v0, Lcom/piriform/ccleaner/l/b;->i:Lcom/piriform/ccleaner/l/a;

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 57
    invoke-static {}, Lcom/piriform/ccleaner/l/d;->b()Lcom/piriform/ccleaner/l/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/l/a;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/piriform/ccleaner/l/b;-><init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/l/c;)V
    .locals 4

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->b()Lcom/piriform/ccleaner/l/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->d()Z

    move-result v2

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->e()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/piriform/ccleaner/l/b;-><init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;ZLjava/util/Set;)V

    .line 79
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    .line 80
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->c()Lcom/piriform/ccleaner/l/d;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/l/d;->a(Lcom/piriform/ccleaner/l/d;)Lcom/piriform/ccleaner/l/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 81
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;Z)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/piriform/ccleaner/l/b;-><init>()V

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Must provide a time"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/l/b;->h:Ljava/lang/Long;

    .line 69
    iput-object p2, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 70
    iput-boolean p3, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/piriform/ccleaner/l/a;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/l/b;-><init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;Z)V

    .line 86
    invoke-virtual {p0, p4}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/l/c;Lcom/piriform/ccleaner/l/c;J)Lcom/piriform/ccleaner/l/c;
    .locals 2

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object p1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/piriform/ccleaner/l/c;->a(Lcom/piriform/ccleaner/l/c;J)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method private static a(Ljava/util/Calendar;)Lcom/piriform/ccleaner/scheduler/b;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/piriform/ccleaner/scheduler/b;->a(I)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Date;Lcom/piriform/ccleaner/l/a;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lcom/piriform/ccleaner/l/b;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 5095
    invoke-virtual {p1}, Lcom/piriform/ccleaner/l/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/piriform/ccleaner/l/a;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/l/a;->a(Ljava/util/Calendar;II)V

    .line 237
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(J)Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 168
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2130
    iget-boolean v1, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    .line 1174
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 3072
    iget-object v1, v1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    .line 1174
    if-nez v1, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 3076
    iget-object v3, v1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    .line 1177
    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 3212
    invoke-static {v2, v1}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Date;Lcom/piriform/ccleaner/l/a;)Ljava/util/Calendar;

    move-result-object v1

    .line 3213
    invoke-static {v1}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Calendar;)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v4

    .line 3215
    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3216
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 3217
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1179
    :cond_0
    if-nez v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 3225
    invoke-static {v2, v0}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Date;Lcom/piriform/ccleaner/l/a;)Ljava/util/Calendar;

    move-result-object v0

    .line 3226
    invoke-static {v0}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Calendar;)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v1

    .line 4136
    iget v1, v1, Lcom/piriform/ccleaner/scheduler/b;->l:I

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/piriform/ccleaner/scheduler/b;->a(I)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v1

    .line 4132
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/scheduler/b;->a(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3229
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 3230
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1183
    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/l/c;J)Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0, p2, p3}, Lcom/piriform/ccleaner/l/b;->a(J)Ljava/util/Date;

    move-result-object v0

    .line 98
    invoke-interface {p1, p2, p3}, Lcom/piriform/ccleaner/l/c;->a(J)Ljava/util/Date;

    move-result-object v1

    .line 100
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/piriform/ccleaner/l/a;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    return-object v0
.end method

.method public final c()Lcom/piriform/ccleaner/l/d;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 20
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 5290
    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->b()Lcom/piriform/ccleaner/l/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/l/a;->a(Lcom/piriform/ccleaner/l/a;)I

    move-result v1

    .line 5291
    if-nez v1, :cond_0

    .line 5292
    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5293
    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 5298
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 5299
    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->h:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v2

    .line 6006
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    const/4 v0, -0x1

    .line 20
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v0

    .line 5295
    goto :goto_0

    .line 6006
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-ne p0, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/l/b;

    .line 255
    iget-boolean v2, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    iget-boolean v3, p1, Lcom/piriform/ccleaner/l/b;->e:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    iget-boolean v3, p1, Lcom/piriform/ccleaner/l/b;->f:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    iget-object v3, p1, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    .line 257
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    iget-object v3, p1, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    .line 258
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    iget-object v3, p1, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    .line 259
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/l/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    iget-object v3, p1, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 260
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/l/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    .line 267
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 268
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/l/a;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 269
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/l/d;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 270
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    return v0

    :cond_0
    move v0, v2

    .line 270
    goto :goto_0

    :cond_1
    move v1, v2

    .line 271
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MutableScheduledClean{label=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/piriform/ccleaner/l/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->c:Lcom/piriform/ccleaner/l/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", daysSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabledAnalysisTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resultsNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/piriform/ccleaner/l/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
