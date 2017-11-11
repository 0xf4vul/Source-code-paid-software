.class public final Lcom/piriform/ccleaner/core/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/b/c$a;,
        Lcom/piriform/ccleaner/core/b/c$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/piriform/ccleaner/core/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/b/a/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/piriform/ccleaner/core/b/c$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/b/c$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/core/b/c;->a:Lcom/piriform/ccleaner/core/b/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/c;->b:Landroid/content/ContentResolver;

    .line 45
    return-void
.end method

.method private a(Ljava/util/List;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/c$b;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/b/c$b;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string/jumbo v2, " OR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    const-string/jumbo v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    iget-object v2, v0, Lcom/piriform/ccleaner/core/b/c$b;->a:Lcom/piriform/ccleaner/core/a;

    .line 136
    sget-object v5, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq v2, v5, :cond_1

    .line 137
    const-string/jumbo v2, "date < ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 4025
    iget-object v5, v0, Lcom/piriform/ccleaner/core/b/c$b;->a:Lcom/piriform/ccleaner/core/a;

    .line 138
    invoke-static {v2, v5}, Lcom/piriform/ccleaner/core/l;->a(Ljava/util/Calendar;Lcom/piriform/ccleaner/core/a;)Ljava/util/Calendar;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5025
    :cond_1
    iget-object v2, v0, Lcom/piriform/ccleaner/core/b/c$b;->b:Lcom/piriform/ccleaner/core/data/e;

    .line 143
    sget-object v5, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    if-eq v2, v5, :cond_3

    .line 6025
    iget-object v2, v0, Lcom/piriform/ccleaner/core/b/c$b;->a:Lcom/piriform/ccleaner/core/a;

    .line 144
    sget-object v5, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq v2, v5, :cond_2

    .line 145
    const-string/jumbo v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    const-string/jumbo v2, "type = ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7025
    iget-object v0, v0, Lcom/piriform/ccleaner/core/b/c$b;->b:Lcom/piriform/ccleaner/core/data/e;

    .line 7028
    iget v0, v0, Lcom/piriform/ccleaner/core/data/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_3
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/c;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string/jumbo v5, "date DESC "

    .line 156
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_1
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "No permission to access call log"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 161
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a;Lcom/piriform/ccleaner/core/data/e;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 92
    sget-object v0, Lcom/piriform/ccleaner/core/a;->e:Lcom/piriform/ccleaner/core/a;

    if-ne p1, v0, :cond_0

    move v0, v6

    .line 123
    :goto_0
    return v0

    .line 96
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sget-object v0, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq p1, v0, :cond_1

    .line 100
    const-string/jumbo v0, "date < ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/core/l;->a(Ljava/util/Calendar;Lcom/piriform/ccleaner/core/a;)Ljava/util/Calendar;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/core/data/e;->a:Lcom/piriform/ccleaner/core/data/e;

    if-eq p2, v0, :cond_3

    .line 107
    sget-object v0, Lcom/piriform/ccleaner/core/a;->d:Lcom/piriform/ccleaner/core/a;

    if-eq p1, v0, :cond_2

    .line 108
    const-string/jumbo v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    const-string/jumbo v0, "type = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    iget v0, p2, Lcom/piriform/ccleaner/core/data/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/c;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 116
    if-nez v1, :cond_4

    move v0, v6

    .line 117
    goto :goto_0

    .line 121
    :cond_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/core/b/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/b/a/a",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/b/c$b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/core/b/c;->a(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 62
    :goto_0
    if-eqz v1, :cond_3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_1
    return-object v0

    .line 1166
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 76
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 79
    :cond_4
    new-instance v1, Lcom/piriform/ccleaner/core/b/b;

    iget-object v5, p0, Lcom/piriform/ccleaner/core/b/c;->b:Landroid/content/ContentResolver;

    invoke-direct {v1, v3, v5}, Lcom/piriform/ccleaner/core/b/b;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/b/b;->a()Lcom/piriform/ccleaner/core/data/d;

    move-result-object v5

    .line 80
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v0, v4}, Lcom/piriform/ccleaner/core/b/a/a;->d(II)V

    .line 81
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v2

    .line 88
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/util/List;Lcom/piriform/ccleaner/core/b/c$a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;",
            "Lcom/piriform/ccleaner/core/b/c$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/d;

    .line 175
    if-eqz p2, :cond_1

    .line 176
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v1, v5}, Lcom/piriform/ccleaner/core/b/c$a;->c(II)V

    move v1, v3

    .line 7187
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "_id=\'"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7188
    iget-object v7, p0, Lcom/piriform/ccleaner/core/b/c;->b:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    .line 178
    :goto_1
    if-eqz v3, :cond_0

    .line 179
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v3, v2

    .line 7188
    goto :goto_1

    .line 183
    :cond_3
    return-object v4
.end method
